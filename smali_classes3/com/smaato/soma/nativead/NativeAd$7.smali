.class Lcom/smaato/soma/nativead/NativeAd$7;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/p;

.field final synthetic b:Lcom/smaato/soma/nativead/NativeAd;


# direct methods
.method constructor <init>(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd$7;->b:Lcom/smaato/soma/nativead/NativeAd;

    iput-object p2, p0, Lcom/smaato/soma/nativead/NativeAd$7;->a:Lcom/smaato/soma/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd$7;->a:Lcom/smaato/soma/p;

    .line 762
    invoke-interface {v2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    .line 763
    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 764
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 765
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$7;->b:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 766
    return-void
.end method
