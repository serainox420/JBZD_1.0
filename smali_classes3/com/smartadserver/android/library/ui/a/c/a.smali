.class public Lcom/smartadserver/android/library/ui/a/c/a;
.super Ljava/lang/Object;
.source "SASMatrix.java"


# static fields
.field private static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Lcom/smartadserver/android/library/ui/a/c/a;->a:[F

    return-void
.end method

.method public static a([FI)V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v0, 0x0

    .line 516
    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 517
    add-int v2, p1, v1

    const/4 v3, 0x0

    aput v3, p0, v2

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_0
    :goto_1
    if-ge v0, v4, :cond_1

    .line 520
    add-int v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v1

    .line 519
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    .line 522
    :cond_1
    return-void
.end method
