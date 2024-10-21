package com.example.migrateproject.model;

public class Bank {
    private int bank_id;
    private String bank_name;
    private double interestRateFirstYear;
    private double maxLoanPercentage;
    private int loanTermMonths;

    public Bank(int bank_id, String bank_name, double interestRateFirstYear, double maxLoanPercentage, int loanTermMonths) {
        this.bank_id = bank_id;
        this.bank_name = bank_name;
        this.interestRateFirstYear = interestRateFirstYear;
        this.maxLoanPercentage = maxLoanPercentage;
        this.loanTermMonths = loanTermMonths;
    }

    public int getBank_id() {
        return bank_id;
    }

    public void setBank_id(int bank_id) {
        this.bank_id = bank_id;
    }

    public String getBank_name() {
        return bank_name;
    }

    public void setBank_name(String bank_name) {
        this.bank_name = bank_name;
    }

    public double getInterestRateFirstYear() {
        return interestRateFirstYear;
    }

    public void setInterestRateFirstYear(double interestRateFirstYear) {
        this.interestRateFirstYear = interestRateFirstYear;
    }

    public double getMaxLoanPercentage() {
        return maxLoanPercentage;
    }

    public void setMaxLoanPercentage(double maxLoanPercentage) {
        this.maxLoanPercentage = maxLoanPercentage;
    }

    public int getLoanTermMonths() {
        return loanTermMonths;
    }

    public void setLoanTermMonths(int loanTermMonths) {
        this.loanTermMonths = loanTermMonths;
    }
}
