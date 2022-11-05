.class Lcom/openx/view/mraid/methods/Resize$2$1;
.super Ljava/lang/Object;
.source "Resize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Resize$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/view/mraid/methods/Resize$2;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Resize$2;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize$2$1;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2$1;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->closeResizedAdWindow(Z)V

    .line 176
    return-void
.end method
