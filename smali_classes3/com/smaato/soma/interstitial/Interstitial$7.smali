.class Lcom/smaato/soma/interstitial/Interstitial$7;
.super Lcom/smaato/soma/l;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/Interstitial;->setLocationUpdateEnabled(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/smaato/soma/interstitial/Interstitial;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/Interstitial;Z)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial$7;->b:Lcom/smaato/soma/interstitial/Interstitial;

    iput-boolean p2, p0, Lcom/smaato/soma/interstitial/Interstitial$7;->a:Z

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    iget-boolean v1, p0, Lcom/smaato/soma/interstitial/Interstitial$7;->a:Z

    invoke-virtual {v0, v1}, Lcom/smaato/soma/interstitial/b;->setLocationUpdateEnabled(Z)V

    .line 343
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
    .line 339
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/Interstitial$7;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
