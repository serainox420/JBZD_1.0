.class Lcom/apprupt/sdk/CvMediator$4;
.super Ljava/lang/Object;
.source "CvMediator.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediator;->e()Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediator;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediator;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediator$4;->a:Lcom/apprupt/sdk/CvMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apprupt/sdk/CvValueExchange;->a(Ljava/lang/String;Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 221
    return-void
.end method
