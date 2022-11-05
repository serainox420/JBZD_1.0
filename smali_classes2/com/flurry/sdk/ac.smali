.class public final Lcom/flurry/sdk/ac;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ac$a;
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ac$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "com.flurry.android.sdk.AssetCacheManagerStatusEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
