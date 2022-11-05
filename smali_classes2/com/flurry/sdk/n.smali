.class public final Lcom/flurry/sdk/n;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/n$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/Button;

.field public b:I

.field public c:Lcom/flurry/sdk/n$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/n$a;)V
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.flurry.android.impl.ads.RegisterCTAViewEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/flurry/sdk/n;->c:Lcom/flurry/sdk/n$a;

    .line 35
    return-void
.end method
