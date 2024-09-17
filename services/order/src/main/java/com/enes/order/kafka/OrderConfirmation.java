package com.enes.order.kafka;

import com.enes.order.customer.CustomerResponse;
import com.enes.order.order.PaymentMethod;
import com.enes.order.product.PurchaseResponse;

import java.math.BigDecimal;
import java.util.List;

public record OrderConfirmation(
        String orderReference,

        BigDecimal totalAmount,

        PaymentMethod paymentMethod,

        CustomerResponse customer,

        List<PurchaseResponse> products
) {
}
