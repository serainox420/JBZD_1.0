.class public final Lcom/flurry/sdk/ha;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ha$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/flurry/sdk/a;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.flurry.android.impl.ads.views.AdViewEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
