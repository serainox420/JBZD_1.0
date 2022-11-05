.class Lcom/apprupt/sdk/CvMediator$3;
.super Ljava/lang/Object;
.source "CvMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediator;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/AdWrapper;

.field final synthetic b:Lcom/apprupt/sdk/CvMediator;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediator;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediator$3;->b:Lcom/apprupt/sdk/CvMediator;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediator$3;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator$3;->b:Lcom/apprupt/sdk/CvMediator;

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediator$3;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvMediator;->b(Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 122
    return-void
.end method
