.class public Lcom/google/firebase/database/connection/idl/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Lcom/google/firebase/database/connection/idl/zzf;

.field final c:I

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/b;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/b;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/firebase/database/connection/idl/zzf;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/firebase/database/connection/idl/zzf;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->a:I

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->b:Lcom/google/firebase/database/connection/idl/zzf;

    iput p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->c:I

    iput-object p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->d:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->e:Z

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/database/connection/idl/zzc;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbon;",
            "Lcom/google/android/gms/internal/zzbro$zza;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->a:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    iput v1, p0, Lcom/google/firebase/database/connection/idl/zzc;->a:I

    invoke-static {p1}, Lcom/google/firebase/database/connection/idl/zzf;->a(Lcom/google/android/gms/internal/zzbon;)Lcom/google/firebase/database/connection/idl/zzf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/connection/idl/zzc;->b:Lcom/google/firebase/database/connection/idl/zzf;

    iput v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->c:I

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->d:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->e:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->g:Ljava/lang/String;

    return-void

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/zzbro$zza;
    .locals 1

    iget v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->c:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciQ:Lcom/google/android/gms/internal/zzbro$zza;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciQ:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciM:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciN:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciO:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciP:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->d:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/connection/idl/b;->a(Lcom/google/firebase/database/connection/idl/zzc;Landroid/os/Parcel;I)V

    return-void
.end method
