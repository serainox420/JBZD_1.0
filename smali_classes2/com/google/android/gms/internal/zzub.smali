.class public Lcom/google/android/gms/internal/zzub;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzub$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzub;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field public final weight:I

.field public final zzahB:Ljava/lang/String;

.field public final zzahC:Z

.field public final zzahD:Z

.field public final zzahE:Ljava/lang/String;

.field public final zzahF:[Lcom/google/android/gms/internal/zztv;

.field final zzahG:[I

.field public final zzahH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzuc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzub;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/zztv;[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzub;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzub;->zzahB:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzub;->zzahC:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzub;->weight:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzub;->zzahD:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzub;->zzahE:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzub;->zzahF:[Lcom/google/android/gms/internal/zztv;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzub;->zzahG:[I

    iput-object p9, p0, Lcom/google/android/gms/internal/zzub;->zzahH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzuc;->zza(Lcom/google/android/gms/internal/zzub;Landroid/os/Parcel;I)V

    return-void
.end method
