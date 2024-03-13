package com.example.eebook.service.impl;

import com.example.eebook.entity.Order;
import com.example.eebook.entity.OrderDetail;
import com.example.eebook.entity.User;
import com.example.eebook.exception.NotFoundException;
import com.example.eebook.model.request.CreateOrderDetailRequest;
import com.example.eebook.model.request.CreateOrderRequest;
import com.example.eebook.repository.OrderDetailRepository;
import com.example.eebook.repository.OrderRepository;
import com.example.eebook.repository.UserRepository;
import com.example.eebook.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    
    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    public void placeOrder(CreateOrderRequest request) {
        // TODO Auto-generated method stub
        Order order = new Order();
        User user = userRepository.findByUsername(request.getUsername()).orElseThrow(() -> new NotFoundException("Not Found User With Username:" + request.getUsername()));
        order.setName(request.getName());
        order.setPhoneNumber(request.getPhoneNumber());
        order.setEmail(request.getEmail());
        order.setCountry(request.getCountry());
        order.setCity(request.getCity());
        order.setDistrict(request.getDistrict());
        order.setWard(request.getWard());
        order.setAddress(request.getAddress());
        order.setOrderInfo(request.getOrderInfo());
        orderRepository.save(order);
        long totalPrice = 0;
        for(CreateOrderDetailRequest rq: request.getOrderDetails()){
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setName(rq.getName());
            orderDetail.setPrice(rq.getPrice());
            orderDetail.setQuantity(rq.getQuantity());
            orderDetail.setSubTotal(rq.getPrice()* rq.getQuantity());
            orderDetail.setOrder(order);
            totalPrice += orderDetail.getSubTotal();
            orderDetailRepository.save(orderDetail);
            
        }
        order.setTotalPrice(totalPrice);
        order.setUser(user);
        orderRepository.save(order);
    }

    @Override
    public List<Order> getList() {
        return orderRepository.findAll(Sort.by("id").descending());
    }

    @Override
    public List<Order> getOrderByUser(String username) {
        User user = userRepository.findByUsername(username).orElseThrow(() -> new NotFoundException("Not Found User With Username:" + username));

        List<Order> orders = orderRepository.getOrderByUser(user.getId());
        return orders;  
    }

    @Override
    public String getLastOrderInfo() {
        return orderRepository.getLastOrderInfo();
    }


}
