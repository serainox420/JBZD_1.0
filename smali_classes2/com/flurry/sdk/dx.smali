.class public final Lcom/flurry/sdk/dx;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# instance fields
.field public a:Lcom/flurry/sdk/dw;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "com.flurry.android.sdk.AdResponseEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
