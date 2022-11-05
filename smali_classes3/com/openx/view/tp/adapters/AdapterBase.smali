.class public abstract Lcom/openx/view/tp/adapters/AdapterBase;
.super Ljava/lang/Object;
.source "AdapterBase.java"

# interfaces
.implements Lcom/openx/core/network/BaseResponseHandler;


# instance fields
.field protected context:Landroid/content/Context;

.field protected listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/openx/view/tp/adapters/AdapterBase;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/openx/view/tp/adapters/AdapterBase;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    .line 19
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
