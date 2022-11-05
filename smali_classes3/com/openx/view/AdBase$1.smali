.class Lcom/openx/view/AdBase$1;
.super Ljava/lang/Object;
.source "AdBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/AdBase;->initStartLoading(Lcom/openx/view/WebViewBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/AdBase;


# direct methods
.method constructor <init>(Lcom/openx/view/AdBase;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/openx/view/AdBase$1;->this$0:Lcom/openx/view/AdBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/openx/view/AdBase$1;->this$0:Lcom/openx/view/AdBase;

    iget-object v1, p0, Lcom/openx/view/AdBase$1;->this$0:Lcom/openx/view/AdBase;

    iget-object v1, v1, Lcom/openx/view/AdBase;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBase;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 465
    return-void
.end method
