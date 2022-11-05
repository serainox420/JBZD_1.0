.class Lcom/adcolony/sdk/ca$d$1$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d$1;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d$1;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$1$1;->a:Lcom/adcolony/sdk/ca$d$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 241
    if-eqz p1, :cond_0

    .line 242
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 244
    :cond_0
    return-void
.end method
