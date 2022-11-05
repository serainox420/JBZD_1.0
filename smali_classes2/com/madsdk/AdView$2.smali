.class Lcom/madsdk/AdView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/AdView;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/madsdk/AdView$2;->this$0:Lcom/madsdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/madsdk/AdView$2;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$300(Lcom/madsdk/AdView;)Lcom/madsdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/madsdk/AdView$2;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$300(Lcom/madsdk/AdView;)Lcom/madsdk/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/madsdk/AdListener;->onClick()V

    .line 96
    :cond_0
    return-void
.end method
