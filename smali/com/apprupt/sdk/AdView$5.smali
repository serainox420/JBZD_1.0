.class Lcom/apprupt/sdk/AdView$5;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->setListener(Lcom/apprupt/sdk/AdView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$Listener;

.field final synthetic b:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/AdView$Listener;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$5;->b:Lcom/apprupt/sdk/AdView;

    iput-object p2, p0, Lcom/apprupt/sdk/AdView$5;->a:Lcom/apprupt/sdk/AdView$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$5;->b:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$5;->a:Lcom/apprupt/sdk/AdView$Listener;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/AdView$Listener;)Lcom/apprupt/sdk/AdView$Listener;

    .line 440
    return-void
.end method
