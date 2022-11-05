.class public Lcom/google/android/gms/internal/zzajp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaHE:I

.field final zzaOi:Lcom/google/android/gms/drive/events/ChangeEvent;

.field final zzaOj:Lcom/google/android/gms/drive/events/CompletionEvent;

.field final zzaOk:Lcom/google/android/gms/drive/events/zzk;

.field final zzaOl:Lcom/google/android/gms/drive/events/zzb;

.field final zzaOm:Lcom/google/android/gms/drive/events/zzr;

.field final zzaOn:Lcom/google/android/gms/drive/events/zzn;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;Lcom/google/android/gms/drive/events/zzk;Lcom/google/android/gms/drive/events/zzb;Lcom/google/android/gms/drive/events/zzr;Lcom/google/android/gms/drive/events/zzn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajp;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzajp;->zzaHE:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajp;->zzaOi:Lcom/google/android/gms/drive/events/ChangeEvent;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzajp;->zzaOj:Lcom/google/android/gms/drive/events/CompletionEvent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzajp;->zzaOk:Lcom/google/android/gms/drive/events/zzk;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzajp;->zzaOl:Lcom/google/android/gms/drive/events/zzb;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzajp;->zzaOm:Lcom/google/android/gms/drive/events/zzr;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzajp;->zzaOn:Lcom/google/android/gms/drive/events/zzn;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajq;->zza(Lcom/google/android/gms/internal/zzajp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBi()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzajp;->zzaHE:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/gms/internal/zzajp;->zzaHE:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected event type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajp;->zzaOi:Lcom/google/android/gms/drive/events/ChangeEvent;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajp;->zzaOj:Lcom/google/android/gms/drive/events/CompletionEvent;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajp;->zzaOk:Lcom/google/android/gms/drive/events/zzk;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajp;->zzaOl:Lcom/google/android/gms/drive/events/zzb;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajp;->zzaOm:Lcom/google/android/gms/drive/events/zzr;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajp;->zzaOn:Lcom/google/android/gms/drive/events/zzn;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
