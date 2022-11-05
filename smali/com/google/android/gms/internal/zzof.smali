.class public Lcom/google/android/gms/internal/zzof;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzof$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzKq:Ljava/lang/String;

.field public final zzLn:J

.field public final zzVB:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzof$zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzof$zza;->zza(Lcom/google/android/gms/internal/zzof$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzof;->zzVB:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzof$zza;->zzb(Lcom/google/android/gms/internal/zzof$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzof;->zzKq:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzof$zza;->zzc(Lcom/google/android/gms/internal/zzof$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzof;->errorCode:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzof$zza;->zzd(Lcom/google/android/gms/internal/zzof$zza;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzof;->zzLn:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzof$zza;Lcom/google/android/gms/internal/zzof$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzof;-><init>(Lcom/google/android/gms/internal/zzof$zza;)V

    return-void
.end method
