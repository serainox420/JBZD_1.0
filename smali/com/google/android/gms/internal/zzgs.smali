.class public Lcom/google/android/gms/internal/zzgs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static final zzGb:I

.field private static final zzGc:I

.field static final zzGd:I

.field static final zzGe:I


# instance fields
.field private final mBackgroundColor:I

.field private final mTextColor:I

.field private final zzGf:Ljava/lang/String;

.field private final zzGg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzGh:I

.field private final zzGi:I

.field private final zzGj:I

.field private final zzGk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xcc

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzgs;->zzGb:I

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzgs;->zzGc:I

    sget v0, Lcom/google/android/gms/internal/zzgs;->zzGc:I

    sput v0, Lcom/google/android/gms/internal/zzgs;->zzGd:I

    sget v0, Lcom/google/android/gms/internal/zzgs;->zzGb:I

    sput v0, Lcom/google/android/gms/internal/zzgs;->zzGe:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgs;->zzGf:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgs;->zzGg:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/zzgs;->mBackgroundColor:I

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/zzgs;->mTextColor:I

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGh:I

    iput p6, p0, Lcom/google/android/gms/internal/zzgs;->zzGi:I

    iput p7, p0, Lcom/google/android/gms/internal/zzgs;->zzGj:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzgs;->zzGk:Z

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/zzgs;->zzGd:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/gms/internal/zzgs;->zzGe:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    goto :goto_2
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzgs;->mBackgroundColor:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGf:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzgs;->mTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGh:I

    return v0
.end method

.method public zzfL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGg:Ljava/util/List;

    return-object v0
.end method

.method public zzfM()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGi:I

    return v0
.end method

.method public zzfN()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGj:I

    return v0
.end method

.method public zzfO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgs;->zzGk:Z

    return v0
.end method
