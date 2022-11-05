.class final Lcom/flurry/android/FlurryInternalTakeoverActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryInternalTakeoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/gx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryInternalTakeoverActivity;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 2

    .prologue
    .line 308
    check-cast p1, Lcom/flurry/sdk/gx;

    .line 1311
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;-><init>(Lcom/flurry/android/FlurryInternalTakeoverActivity$1;Lcom/flurry/sdk/gx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method
