.class public Lcom/openx/core/network/OXAdRequest;
.super Ljava/lang/Object;
.source "OXAdRequest.java"


# instance fields
.field public adCallParams:Lcom/openx/model/adParams/AdCallParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    .line 20
    return-void
.end method
