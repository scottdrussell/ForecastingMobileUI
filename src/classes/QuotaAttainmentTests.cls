/*
Copyright (c) 2014, salesforce.com, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*/
@isTest
public class QuotaAttainmentTests{
    static testMethod void testBasic() {
        QuotaAttainmentController qc = new QuotaAttainmentController();
        qc.getAttainments();
        
    }
    
    static testMethod void testModel() {
        ForecastAttainmentModel a = new ForecastAttainmentModel();
        a.closedAmount = 5000;
        a.commitAmount = 6000;
        a.bestcaseAmount = 7000;
        a.quota = 4000;
        a.getBestcaseAmountStr();
        a.getClosedAmountStr();
        a.getCommitAmountStr();
        a.getQuotaAmountStr();
        a.getClosedPercent();
        a.getCommitPercent();
        a.getQuotaAttainmentPercent();
        a.getQuotaRemainingStr();
        a.getQuotaPercent();
    }
    
    static testMethod void testOppsInForecastCategory() {
        OppsInForecastCategoryController c = new OppsInForecastCategoryController();
        c.getNumOppsString();
        c.getOppsInForecastingItem();
    }
    
    static testMethod void testCurrency() {
        Opportunity o = new Opportunity();
        o.Name = 'ABC';
        o.Amount = 1234;
        o.CloseDate = Date.today();
        o.StageName = 'Pipeline';
        insert o;
        
        CurrencyUtil.getCurrencySymbol(o);
        OppsInForecastCategoryController.DisplayOpp d = new OppsInForecastCategoryController.DisplayOpp(o);
        d.getId();
        d.getName();
        d.getStageName();
        d.getAmount();
        d.getAccountName();
        
    }
    
    static testMethod void testDisplayOpp() {
        
    }
}