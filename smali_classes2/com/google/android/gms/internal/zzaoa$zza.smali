.class public Lcom/google/android/gms/internal/zzaoa$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaoa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzaUA:D

.field private final zzaUB:D


# direct methods
.method private constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaoa$zza;->zzaUA:D

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzaoa$zza;->zzaUB:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/google/android/gms/internal/zzaoa$1;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaoa$zza;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public zzg(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaoa$zza;->zzaUA:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaoa$zza;->zzaUB:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
