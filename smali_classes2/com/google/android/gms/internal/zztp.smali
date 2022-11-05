.class public Lcom/google/android/gms/internal/zztp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztp$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zztp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Landroid/accounts/Account;

.field final zzahb:[Lcom/google/android/gms/internal/zztt;

.field public final zzahc:Ljava/lang/String;

.field public final zzahd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/internal/zztt;)V
    .locals 4

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/zztp;-><init>([Lcom/google/android/gms/internal/zztt;Ljava/lang/String;ZLandroid/accounts/Account;)V

    if-eqz p4, :cond_3

    new-instance v1, Ljava/util/BitSet;

    invoke-static {}, Lcom/google/android/gms/internal/zzua;->zzqG()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_3

    aget-object v2, p4, v0

    iget v2, v2, Lcom/google/android/gms/internal/zztt;->zzaho:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Duplicate global search section type "

    invoke-static {v2}, Lcom/google/android/gms/internal/zzua;->zzaP(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method constructor <init>([Lcom/google/android/gms/internal/zztt;Ljava/lang/String;ZLandroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztp;->zzahb:[Lcom/google/android/gms/internal/zztt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zztp;->zzahc:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zztp;->zzahd:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zztp;->account:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zztp;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zztp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp;->zzahc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp;->zzahc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zztp;->zzahd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zztp;->zzahd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp;->account:Landroid/accounts/Account;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztp;->zzqD()[Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztp;->zzqD()[Lcom/google/android/gms/internal/zztt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp;->zzahc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zztp;->zzahd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp;->account:Landroid/accounts/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp;->zzahb:[Lcom/google/android/gms/internal/zztt;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zztq;->zza(Lcom/google/android/gms/internal/zztp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqD()[Lcom/google/android/gms/internal/zztt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp;->zzahb:[Lcom/google/android/gms/internal/zztt;

    return-object v0
.end method
