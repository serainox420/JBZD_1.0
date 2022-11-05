.class Lcom/openx/view/mraid/methods/Close$2;
.super Ljava/lang/Object;
.source "Close.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Close;->makeViewInvisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/methods/Close;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Close;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Close$2;->this$0:Lcom/openx/view/mraid/methods/Close;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$2;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->setVisibility(I)V

    .line 96
    return-void
.end method
