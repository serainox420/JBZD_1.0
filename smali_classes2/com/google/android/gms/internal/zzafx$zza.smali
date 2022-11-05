.class public Lcom/google/android/gms/internal/zzafx$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzafx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzafx$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaKq:[Ljava/lang/String;

.field public final zzaKr:[Ljava/lang/String;

.field public final zzaKs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzafz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzafz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafx$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKq:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKr:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzafx$zza;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzafx$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKq:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafx$zza;->zzaKq:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKr:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafx$zza;->zzaKr:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafx$zza;->zzaKs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKq:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKr:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafx$zza;->zzaKs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzafz;->zza(Lcom/google/android/gms/internal/zzafx$zza;Landroid/os/Parcel;I)V

    return-void
.end method
