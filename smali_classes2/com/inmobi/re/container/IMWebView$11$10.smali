.class Lcom/inmobi/re/container/IMWebView$11$10;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView$11;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/re/container/IMWebView$11;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView$11;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$11$10;->c:Lcom/inmobi/re/container/IMWebView$11;

    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView$11$10;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/inmobi/re/container/IMWebView$11$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1025
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$11$10;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$11$10;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 1026
    return-void
.end method
