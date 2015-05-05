require 'rails_helper'

describe 'Cohorts API' do

  it 'responds with status 200' do
    get_cohorts
    expect(response).to be_success
  end

  it 'has no cohorts' do
    get_cohorts
    expect(@json).to eq []
  end

  it 'has 1 cohort' do
    Cohort.create({name: 'feb14'})
    get_cohorts
    expect(@json).to eq({ name: 'feb14' })
  end

  def get_cohorts
    get '/cohorts'
    @json = JSON.parse(response.body)
  end

end
