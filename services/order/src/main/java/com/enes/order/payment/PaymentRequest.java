package com.enes.order.payment;

import com.enes.order.customer.CustomerResponse;
import com.enes.order.order.PaymentMethod;

import java.math.BigDecimal;

public record PaymentRequest(


        BigDecimal amount,

        PaymentMethod paymentMethod,

        Integer orderId,

        String orderReference,

        CustomerResponse customer
) {
}
