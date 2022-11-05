.class Lcom/apprupt/sdk/AdView$6$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$6$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/AdView$6$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$6$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$6$1$1;->b:Lcom/apprupt/sdk/AdView$6$1;

    iput-object p2, p0, Lcom/apprupt/sdk/AdView$6$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$1$1;->b:Lcom/apprupt/sdk/AdView$6$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6$1;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$6$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Ljava/lang/String;)V

    .line 474
    return-void
.end method
