.class public Lcom/google/android/gms/internal/zzjc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static zzJo:Lcom/google/android/gms/internal/zzjc;


# instance fields
.field private zzJp:I

.field private zzJq:I

.field private zzJr:I

.field private zzJs:I

.field private zzJt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzjc;->zzJo:Lcom/google/android/gms/internal/zzjc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzgC()Lcom/google/android/gms/internal/zzjc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzjc;->zzJo:Lcom/google/android/gms/internal/zzjc;

    return-object v0
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ipl"

    iget v2, p0, Lcom/google/android/gms/internal/zzjc;->zzJp:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipds"

    iget v2, p0, Lcom/google/android/gms/internal/zzjc;->zzJq:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipde"

    iget v2, p0, Lcom/google/android/gms/internal/zzjc;->zzJr:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "iph"

    iget v2, p0, Lcom/google/android/gms/internal/zzjc;->zzJs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipm"

    iget v2, p0, Lcom/google/android/gms/internal/zzjc;->zzJt:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method zzE(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJp:I

    return-void
.end method

.method zzgD()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJq:I

    return-void
.end method

.method zzgE()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJr:I

    return-void
.end method

.method zzgF()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJs:I

    return-void
.end method

.method zzgG()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJt:I

    return-void
.end method

.method public zzgH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJq:I

    return v0
.end method

.method public zzgI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJr:I

    return v0
.end method

.method public zzgJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjc;->zzJs:I

    return v0
.end method
