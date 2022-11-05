.class public abstract Lcom/google/android/gms/internal/zzbrr$zza;
.super Lcom/google/android/gms/internal/zzbod$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbrr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbod$zzb",
        "<",
        "Lcom/google/android/gms/internal/zzbrq;",
        "Lcom/google/android/gms/internal/zzbsc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbod$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzb(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V
.end method

.method public zzf(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbrr$zza;->zzb(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method

.method public synthetic zzj(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbrq;

    check-cast p2, Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbrr$zza;->zzf(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method
