.class public final Lcom/github/rahatarmanahmed/cpv/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rahatarmanahmed/cpv/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircularProgressView:[I

.field public static final CircularProgressView_cpv_animAutostart:I = 0x8

.field public static final CircularProgressView_cpv_animDuration:I = 0x2

.field public static final CircularProgressView_cpv_animSteps:I = 0x9

.field public static final CircularProgressView_cpv_animSwoopDuration:I = 0x3

.field public static final CircularProgressView_cpv_animSyncDuration:I = 0x4

.field public static final CircularProgressView_cpv_color:I = 0x5

.field public static final CircularProgressView_cpv_indeterminate:I = 0x7

.field public static final CircularProgressView_cpv_maxProgress:I = 0x1

.field public static final CircularProgressView_cpv_progress:I = 0x0

.field public static final CircularProgressView_cpv_startAngle:I = 0xa

.field public static final CircularProgressView_cpv_thickness:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/rahatarmanahmed/cpv/R$styleable;->CircularProgressView:[I

    return-void

    :array_0
    .array-data 4
        0x7f01011d
        0x7f01011e
        0x7f01011f
        0x7f010120
        0x7f010121
        0x7f010122
        0x7f010123
        0x7f010124
        0x7f010125
        0x7f010126
        0x7f010127
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
