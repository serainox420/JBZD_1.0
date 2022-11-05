.class public Lcom/google/android/gms/internal/zzalw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzalw$zze;,
        Lcom/google/android/gms/internal/zzalw$zzf;,
        Lcom/google/android/gms/internal/zzalw$zzc;,
        Lcom/google/android/gms/internal/zzalw$zzd;,
        Lcom/google/android/gms/internal/zzalw$zzb;,
        Lcom/google/android/gms/internal/zzalw$zza;
    }
.end annotation


# static fields
.field public static final zzaPP:Lcom/google/android/gms/internal/zzalw$zza;

.field public static final zzaPQ:Lcom/google/android/gms/internal/zzalw$zzb;

.field public static final zzaPR:Lcom/google/android/gms/internal/zzalw$zzd;

.field public static final zzaPS:Lcom/google/android/gms/internal/zzalw$zzc;

.field public static final zzaPT:Lcom/google/android/gms/internal/zzalw$zzf;

.field public static final zzaPU:Lcom/google/android/gms/internal/zzalw$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzalw$zza;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalw$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalw;->zzaPP:Lcom/google/android/gms/internal/zzalw$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzalw$zzb;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzalw$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalw;->zzaPQ:Lcom/google/android/gms/internal/zzalw$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzalw$zzd;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalw$zzd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalw;->zzaPR:Lcom/google/android/gms/internal/zzalw$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzalw$zzc;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalw$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalw;->zzaPS:Lcom/google/android/gms/internal/zzalw$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzalw$zzf;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzalw$zzf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalw;->zzaPT:Lcom/google/android/gms/internal/zzalw$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzalw$zze;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzalw$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzalw;->zzaPU:Lcom/google/android/gms/internal/zzalw$zze;

    return-void
.end method
