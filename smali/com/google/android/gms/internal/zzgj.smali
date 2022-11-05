.class public Lcom/google/android/gms/internal/zzgj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzFK:J

.field private final zzFL:Ljava/lang/String;

.field private final zzFM:Lcom/google/android/gms/internal/zzgj;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzgj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzgj;->zzFK:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgj;->zzFL:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgj;->zzFM:Lcom/google/android/gms/internal/zzgj;

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgj;->zzFK:J

    return-wide v0
.end method

.method zzfy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzFL:Ljava/lang/String;

    return-object v0
.end method

.method zzfz()Lcom/google/android/gms/internal/zzgj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzFM:Lcom/google/android/gms/internal/zzgj;

    return-object v0
.end method
