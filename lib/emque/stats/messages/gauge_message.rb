class GaugeMessage
  include Emque::Producing::Message

  topic "metrics"
  message_type "metrics.gauge"
  raise_on_failure false

  attribute :event_name, String, :required => true
  attribute :value, Integer, :required => true
end
