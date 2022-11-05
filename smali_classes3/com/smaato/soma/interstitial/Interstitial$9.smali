.class Lcom/smaato/soma/interstitial/Interstitial$9;
.super Lcom/smaato/soma/l;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/Interstitial;->setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
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
.field final synthetic a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

.field final synthetic b:Lcom/smaato/soma/interstitial/Interstitial;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial$9;->b:Lcom/smaato/soma/interstitial/Interstitial;

    iput-object p2, p0, Lcom/smaato/soma/interstitial/Interstitial$9;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

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
    .line 382
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    iget-object v1, p0, Lcom/smaato/soma/interstitial/Interstitial$9;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/interstitial/b;->setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    .line 383
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
    .line 379
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/Interstitial$9;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
