.class Lcom/inmobi/re/container/IMWebView$11$1;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView$11;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/inmobi/re/container/IMWebView$11;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView$11;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$11$1;->b:Lcom/inmobi/re/container/IMWebView$11;

    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView$11$1;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$11$1;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 828
    return-void
.end method
