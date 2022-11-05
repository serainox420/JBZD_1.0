.class Lcom/inmobi/re/container/IMWebView$11$6;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView$11;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/IMWebView$11;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView$11;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$11$6;->a:Lcom/inmobi/re/container/IMWebView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    return v0
.end method
