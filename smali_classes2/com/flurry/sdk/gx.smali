.class public final Lcom/flurry/sdk/gx;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gx$a;
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/r;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "com.flurry.android.impl.ads.views.ActivityEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
