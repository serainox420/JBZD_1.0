.class Lcom/millennialmedia/internal/adcontrollers/WebController$2;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$2;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$2;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onClicked()V

    .line 170
    return-void
.end method
