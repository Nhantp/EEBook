import { Injectable } from '@angular/core';
import {BehaviorSubject, Subject} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ShareDataService {

  constructor() { }

  private productData = new BehaviorSubject<any>(null);
  private customerData = new BehaviorSubject<any>(null);
  private customer: any = {};
  private customerDataSubject = new BehaviorSubject<any>(null);

  setProductData(data: any) {
    this.productData.next(data);
  }

  getProductData() {
    return this.productData.asObservable();
  }

  setCustomerData(data: any) {
    this.customerData.next(data);
  }

  getCustomerData() {
    return this.customerData.asObservable();
  }

  deleteCustomer() {
    this.customer = {
      customerId: null,
      customerName: '',
      customerPhone: '',
      customerAddress: '',
      customerEmail: '',
    };
    this.customerDataSubject.next(this.customer);
  }

  getCustomer() {
    return this.customerDataSubject.asObservable();
  }

}
