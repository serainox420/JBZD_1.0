.class Lcom/inmobi/re/container/IMWebView$10;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView;->a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/http/SslError;

.field final synthetic b:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$10;->b:Lcom/inmobi/re/container/IMWebView;

    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView$10;->a:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 780
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 781
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$10;->b:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$10;->a:Landroid/net/http/SslError;

    invoke-static {v1}, Lcom/inmobi/commons/internal/WrapperFunctions;->getSSLErrorUrl(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V

    .line 783
    return-void
.end method
