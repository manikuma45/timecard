FactoryBot.define do
  factory :timecard_1, class: TimeCard do
    user_id { 1 }
    affiliation_id { 1 }
    year { 2020 }
    month { 3 }
    day { 1 }
    worked_in_at { '2020-03-01 09:00:00' }
    breaked_in_at { '2020-03-01 14:00:00' }
    breaked_out_at { '2020-03-01 15:00:00' }
    worked_out_at { '2020-03-01 18:00:00' }
    worked_time { 28800 }
    breaked_time { 3600 }
    overtime { 0 }

      trait :overtime do
        worked_out_at { '2020-03-01 19:00:00' }
        worked_time { 32400 }
        overtime { 3600 }
      end

      trait :other_day do
        user_id { 1 }
        affiliation_id { 1 }
        year { 2020 }
        month { 3 }
        day { 2 }
        worked_in_at { '2020-03-02 09:00:00' }
        breaked_in_at { '2020-03-02 14:00:00' }
        breaked_out_at { '2020-03-02 15:00:00' }
        worked_out_at { '2020-03-02 19:00:00' }
        worked_time { 32400 }
        breaked_time { 3600 }
        overtime { 3600 }
      end
  end

  factory :timecard_2, class: TimeCard do
    user_id { 2 }
    affiliation_id { 2 }
    year { 2020 }
    month { 3 }
    day { 2 }
    worked_in_at { '2020-03-02 09:00:00' }
    breaked_in_at { '2020-03-02 14:00:00' }
    breaked_out_at { '2020-03-02 15:00:00' }
    worked_out_at { '2020-03-02 18:00:00' }
    worked_time { 28800 }
    breaked_time { 3600 }
    overtime { 0 }
  end

  factory :timecard_3, class: TimeCard do
    user_id { 1 }
    affiliation_id { 3 }
    year { 2020 }
    month { 3 }
    day { 3 }
    worked_in_at { '2020-03-03 09:00:00' }
    breaked_in_at { '2020-03-03 14:00:00' }
    breaked_out_at { '2020-03-03 15:00:00' }
    worked_out_at { '2020-03-03 18:00:00' }
    worked_time { 28800 }
    breaked_time { 3600 }
    overtime { 0 }
  end
end