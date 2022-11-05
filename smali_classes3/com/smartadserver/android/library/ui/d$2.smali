.class Lcom/smartadserver/android/library/ui/d$2;
.super Ljava/lang/Object;
.source "SASWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/d;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/d;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/d$2;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$2;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/d;->b(Lcom/smartadserver/android/library/ui/d;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 181
    return-void
.end method
