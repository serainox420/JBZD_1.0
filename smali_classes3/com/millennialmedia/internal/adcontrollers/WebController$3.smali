.class Lcom/millennialmedia/internal/adcontrollers/WebController$3;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic c:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->c:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->a:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->c:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 178
    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMWebView instance is null, unable to attach"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->c:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;->c:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachSucceeded()V

    goto :goto_0
.end method
