.class Lcom/smaato/soma/interstitial/BaseActivity$2$1;
.super Lcom/smaato/soma/l;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/BaseActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/interstitial/BaseActivity$2;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/BaseActivity$2;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smaato/soma/interstitial/BaseActivity$2$1;->a:Lcom/smaato/soma/interstitial/BaseActivity$2;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity$2$1;->a:Lcom/smaato/soma/interstitial/BaseActivity$2;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/BaseActivity$2;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/BaseActivity;->finish()V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/BaseActivity$2$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
