
class Spree::Calculator::Shipping::DynamicDeliveryCost < Spree::ShippingCalculator
  preference :minimal_amount, :decimal, default: 75.0
  preference :currency, :string, default: Spree::Config[:currency]
  preference :normal_amount, :decimal, default: 9.99
  preference :discount_amount, :decimal, default: 7.99

  def self.description
    'Orders over $75 ship free'
  end

  def compute_package(package)

      base = package.order.total

    if base < preferred_minimal_amount
      preferred_normal_amount
    else
      preferred_discount_amount
    end
  end
end
