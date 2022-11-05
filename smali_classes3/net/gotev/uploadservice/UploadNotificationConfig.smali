.class public final Lnet/gotev/uploadservice/UploadNotificationConfig;
.super Ljava/lang/Object;
.source "UploadNotificationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/UploadNotificationConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lnet/gotev/uploadservice/UploadNotificationConfig$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadNotificationConfig$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadNotificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const v0, 0x1080055

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->a:I

    .line 52
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->a:I

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->b:I

    .line 53
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->a:I

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->c:I

    .line 54
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->a:I

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->d:I

    .line 55
    iput v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->e:I

    .line 56
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->e:I

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->f:I

    .line 57
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->e:I

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->g:I

    .line 58
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->e:I

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->h:I

    .line 59
    const-string v0, "File Upload"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->i:Ljava/lang/String;

    .line 60
    const-string v0, "Uploading at [[UPLOAD_RATE]] ([[PROGRESS]])"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->j:Ljava/lang/String;

    .line 61
    const-string v0, "Upload completed successfully in [[ELAPSED_TIME]]"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->k:Ljava/lang/String;

    .line 62
    const-string v0, "Error during upload"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->l:Ljava/lang/String;

    .line 63
    const-string v0, "Upload cancelled"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->m:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->n:Z

    .line 65
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->o:Z

    .line 66
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->p:Z

    .line 67
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->q:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->s:Landroid/content/Intent;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->r:Z

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->a:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->b:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->c:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->d:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->e:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->f:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->g:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->h:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->i:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->j:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->k:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->l:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->m:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->n:Z

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->o:Z

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->p:Z

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->q:Z

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->r:Z

    .line 412
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->s:Landroid/content/Intent;

    .line 413
    return-void

    :cond_0
    move v0, v2

    .line 407
    goto :goto_0

    :cond_1
    move v0, v2

    .line 408
    goto :goto_1

    :cond_2
    move v0, v2

    .line 409
    goto :goto_2

    :cond_3
    move v0, v2

    .line 410
    goto :goto_3

    :cond_4
    move v1, v2

    .line 411
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/UploadNotificationConfig$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/UploadNotificationConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->a:I

    return v0
.end method

.method final a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/high16 v2, 0x8000000

    .line 343
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->s:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->s:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->b:I

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->c:I

    return v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->e:I

    return v0
.end method

.method final f()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->f:I

    return v0
.end method

.method final g()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->g:I

    return v0
.end method

.method final h()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->h:I

    return v0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method final n()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->n:Z

    return v0
.end method

.method final o()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->o:Z

    return v0
.end method

.method final p()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->p:Z

    return v0
.end method

.method final q()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->q:Z

    return v0
.end method

.method final r()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->r:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->n:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 386
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->o:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 387
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->p:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 388
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->q:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 389
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->r:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 390
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->s:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 391
    return-void

    :cond_0
    move v0, v2

    .line 385
    goto :goto_0

    :cond_1
    move v0, v2

    .line 386
    goto :goto_1

    :cond_2
    move v0, v2

    .line 387
    goto :goto_2

    :cond_3
    move v0, v2

    .line 388
    goto :goto_3

    :cond_4
    move v1, v2

    .line 389
    goto :goto_4
.end method
