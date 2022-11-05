.class Lcom/google/android/gms/internal/zzie$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field private final zzIh:Lcom/google/android/gms/internal/zzie$zzd;

.field private final zzIi:Z

.field private final zzIj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzie;ZLcom/google/android/gms/internal/zzie$zzd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzIi:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzIh:Lcom/google/android/gms/internal/zzie$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzIj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzIj:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzIi:Z

    return v0
.end method

.method public zzgp()Lcom/google/android/gms/internal/zzie$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie$zzc;->zzIh:Lcom/google/android/gms/internal/zzie$zzd;

    return-object v0
.end method
