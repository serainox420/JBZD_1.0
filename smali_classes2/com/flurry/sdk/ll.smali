.class public final Lcom/flurry/sdk/ll;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ll$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/lk;

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
