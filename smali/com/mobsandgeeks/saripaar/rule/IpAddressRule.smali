.class public Lcom/mobsandgeeks/saripaar/rule/IpAddressRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "IpAddressRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/IpAddress;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/IpAddress;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/IpAddressRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcommons/validator/routines/InetAddressValidator;->getInstance()Lcommons/validator/routines/InetAddressValidator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcommons/validator/routines/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
