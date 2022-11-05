.class Lcom/apprupt/sdk/AdView$6$1$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$6$1;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/AdWrapper;

.field final synthetic b:Lcom/apprupt/sdk/AdView$6$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$6$1;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$6$1$2;->b:Lcom/apprupt/sdk/AdView$6$1;

    iput-object p2, p0, Lcom/apprupt/sdk/AdView$6$1$2;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$1$2;->b:Lcom/apprupt/sdk/AdView$6$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6$1;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v1, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$1$2;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    check-cast v0, Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-static {v1, v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V

    .line 486
    return-void
.end method
