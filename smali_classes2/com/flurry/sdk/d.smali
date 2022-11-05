.class public final Lcom/flurry/sdk/d;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/r;

.field public b:Lcom/flurry/sdk/d$a;

.field public c:Lcom/flurry/sdk/bb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "com.flurry.android.impl.ads.AdStateEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/flurry/sdk/bb;->y:Lcom/flurry/sdk/bb;

    iput-object v0, p0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/bb;

    .line 35
    return-void
.end method
