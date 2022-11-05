.class public Lcom/google/android/gms/internal/zzol;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzLb:Lcom/google/android/gms/internal/zzkb;

.field private final zzVN:Lcom/google/android/gms/internal/zzoi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkb;Lcom/google/android/gms/internal/zzoh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzol;->zzLb:Lcom/google/android/gms/internal/zzkb;

    new-instance v0, Lcom/google/android/gms/internal/zzoi;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzoi;-><init>(Lcom/google/android/gms/internal/zzoh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzVN:Lcom/google/android/gms/internal/zzoi;

    return-void
.end method


# virtual methods
.method public zzjN()Lcom/google/android/gms/internal/zzkb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzLb:Lcom/google/android/gms/internal/zzkb;

    return-object v0
.end method

.method public zzjO()Lcom/google/android/gms/internal/zzoi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzVN:Lcom/google/android/gms/internal/zzoi;

    return-object v0
.end method
