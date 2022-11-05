.class final Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;
.super Ljava/util/HashMap;
.source "CreditCardRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/rule/CreditCardRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 34
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->AMEX:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DINERS:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DISCOVER:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->MASTERCARD:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->VISA:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
