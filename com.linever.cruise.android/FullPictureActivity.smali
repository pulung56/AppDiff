.class public Lcom/linever/cruise/android/FullPictureActivity;
.super Landroid/app/Activity;
.source "FullPictureActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field static final CALL_CRUISE:I = 0x2

.field static final CALL_SHARED:I = 0x1

.field static final CALL_SUTEKI:I = 0x3

.field static final CALL_UNKNOWN:I = 0x0

.field static final DL_FULL:I = 0x2

.field static final DL_MED:I = 0x1

.field static final DL_NG:I = 0x0

.field static final DL_NX:I = -0x1

.field static final KEY_CALLER:Ljava/lang/String; = "CALLER"

.field static final KEY_CRUISE_CHIP_ID:Ljava/lang/String; = "CRUISE_CHIP_ID"

.field static final KEY_CRUISE_DB_ID:Ljava/lang/String; = "CRUISE_ID"

.field static final KEY_DL_STATUS:Ljava/lang/String; = "DL_STATUS"

.field static final KEY_FULL_IMG_PATH:Ljava/lang/String; = "FULL_IMG_PATH"

.field static final KEY_FULL_NET_PATH:Ljava/lang/String; = "FULL_NET_PATH"

.field static final KEY_MED_IMG_PATH:Ljava/lang/String; = "MED_IMG_PATH"

.field static final KEY_MED_NET_PATH:Ljava/lang/String; = "MED_NET_PATH"

.field static final KEY_MSG:Ljava/lang/String; = "MSG"

.field private static final LOADER_FIT_IMG:I = 0x0

.field private static final LOADER_SAVE_CHIP:I = 0x1

.field static final TAG_API:Ljava/lang/String; = "FULLACT_GET_NET_PATH"


# instance fields
.field private final DBUpdaterCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private app:Lcom/linever/cruise/android/CruiseApp;

.field private mBarFlag:Z

.field private mBtnDownload:Landroid/widget/Button;

.field private mCaller:I

.field private mCkbZoom:Landroid/widget/CheckBox;

.field private mCruiseChipId:J

.field private mCruiseDBId:J

.field private mDLManager:Landroid/app/DownloadManager;

.field private mDLStatus:I

.field private mDownloadId:J

.field private mFullImgPath:Ljava/lang/String;

.field private mFullNetPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIBtnClose:Landroid/widget/ImageButton;

.field private mImgFullView:Landroid/widget/ImageView;

.field private mLoBottomBar:Landroid/widget/LinearLayout;

.field private mLoFrame:Landroid/widget/FrameLayout;

.field private mLoTopBar:Landroid/widget/LinearLayout;

.field private mMediumImgPath:Ljava/lang/String;

.field private mMediumNetPath:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mPgbDownload:Landroid/widget/ProgressBar;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavePath:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;

.field private mTxtDownloadStatus:Landroid/widget/TextView;

.field private mTxtMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 489
    new-instance v0, Lcom/linever/cruise/android/FullPictureActivity$1;

    invoke-direct {v0, p0}, Lcom/linever/cruise/android/FullPictureActivity$1;-><init>(Lcom/linever/cruise/android/FullPictureActivity;)V

    iput-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->DBUpdaterCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 42
    return-void
.end method

.method static synthetic access$1(Lcom/linever/cruise/android/FullPictureActivity;)I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCaller:I

    return v0
.end method

.method static synthetic access$10(Lcom/linever/cruise/android/FullPictureActivity;Ljava/lang/Boolean;)V
    .registers 2

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/linever/cruise/android/FullPictureActivity;->checkDownloadStatus(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$11(Lcom/linever/cruise/android/FullPictureActivity;)Lcom/linever/cruise/android/CruiseApp;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->app:Lcom/linever/cruise/android/CruiseApp;

    return-object v0
.end method

.method static synthetic access$12(Lcom/linever/cruise/android/FullPictureActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/linever/cruise/android/FullPictureActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/linever/cruise/android/FullPictureActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/linever/cruise/android/FullPictureActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/linever/cruise/android/FullPictureActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->DBUpdaterCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$17(Lcom/linever/cruise/android/FullPictureActivity;I)V
    .registers 2

    .prologue
    .line 70
    iput p1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLStatus:I

    return-void
.end method

.method static synthetic access$18(Lcom/linever/cruise/android/FullPictureActivity;)V
    .registers 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/linever/cruise/android/FullPictureActivity;->setUpDownloadButton()V

    return-void
.end method

.method static synthetic access$19(Lcom/linever/cruise/android/FullPictureActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/linever/cruise/android/FullPictureActivity;)Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBarFlag:Z

    return v0
.end method

.method static synthetic access$3(Lcom/linever/cruise/android/FullPictureActivity;)V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/linever/cruise/android/FullPictureActivity;->barShow()V

    return-void
.end method

.method static synthetic access$4(Lcom/linever/cruise/android/FullPictureActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mImgFullView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/linever/cruise/android/FullPictureActivity;)V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/linever/cruise/android/FullPictureActivity;->barHide()V

    return-void
.end method

.method static synthetic access$6(Lcom/linever/cruise/android/FullPictureActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/linever/cruise/android/FullPictureActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/linever/cruise/android/FullPictureActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    .prologue
    .line 521
    invoke-direct {p0, p1, p2, p3}, Lcom/linever/cruise/android/FullPictureActivity;->downloadExcute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$9(Lcom/linever/cruise/android/FullPictureActivity;J)V
    .registers 3

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDownloadId:J

    return-void
.end method

.method private barHide()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 265
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBarFlag:Z

    .line 267
    return-void
.end method

.method private barShow()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x12c

    const-wide/16 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 271
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 272
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 273
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBarFlag:Z

    .line 275
    return-void
.end method

.method private checkDownloadStatus(Ljava/lang/Boolean;)V
    .registers 17
    .param p1, "finish"    # Ljava/lang/Boolean;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLManager:Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDownloadId:J

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v9

    .line 556
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_ca

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 557
    const-string v0, "status"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 558
    .local v12, "status":I
    sparse-switch v12, :sswitch_data_ec

    .line 594
    .end local v12    # "status":I
    :cond_2c
    :goto_2c
    if-eqz v9, :cond_31

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 595
    :cond_31
    return-void

    .line 560
    .restart local v12    # "status":I
    :sswitch_32
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 561
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f090127

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 562
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 563
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 564
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLManager:Landroid/app/DownloadManager;

    .line 565
    const-string v1, "title"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    const-string v2, "description"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    const/4 v3, 0x1

    .line 568
    const-string v4, "media_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 569
    const-string v5, "local_uri"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 570
    const-string v6, "total_size"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 571
    const/4 v8, 0x1

    .line 564
    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto :goto_2c

    .line 575
    :sswitch_8a
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 576
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2c

    .line 581
    :sswitch_aa
    const-string v0, "bytes_so_far"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 582
    .local v10, "sofar":J
    const-string v0, "total_size"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 583
    .local v13, "total":J
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, v10

    div-long/2addr v1, v13

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2c

    .line 588
    .end local v10    # "sofar":J
    .end local v12    # "status":I
    .end local v13    # "total":J
    :cond_ca
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 589
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 590
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 591
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2c

    .line 558
    nop

    :sswitch_data_ec
    .sparse-switch
        0x2 -> :sswitch_aa
        0x8 -> :sswitch_32
        0x10 -> :sswitch_8a
    .end sparse-switch
.end method

.method private downloadExcute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savefileName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x64

    .line 523
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 524
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 526
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 527
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {p2}, Lcom/o1soft/lib/base/MediaUtils326;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 529
    .local v9, "title":Ljava/lang/String;
    new-instance v8, Landroid/app/DownloadManager$Request;

    invoke-direct {v8, v10}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 531
    .local v8, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v8, v9}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 532
    invoke-virtual {v0, p3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 533
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 534
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 536
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, v8}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    .line 538
    .local v6, "id":J
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTimer:Ljava/util/Timer;

    .line 539
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/linever/cruise/android/FullPictureActivity$8;

    invoke-direct {v1, p0}, Lcom/linever/cruise/android/FullPictureActivity$8;-><init>(Lcom/linever/cruise/android/FullPictureActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 551
    return-wide v6
.end method

.method private getNetPath(JJ)V
    .registers 13
    .param p1, "dbId"    # J
    .param p3, "cruiseChipId"    # J

    .prologue
    .line 393
    const-string v1, "FullPictureActivity getNetPath"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/o1soft/lib/base/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    new-instance v0, Lcom/linever/cruise/android/FullPictureActivity$7;

    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/linever/cruise/android/CruiseConfig;->DEV_FLAG:I

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/linever/cruise/android/FullPictureActivity$7;-><init>(Lcom/linever/cruise/android/FullPictureActivity;Landroid/content/Context;IJ)V

    .line 482
    .local v0, "apiGetChip":Lcom/linever/lib/ApiGetChip;
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->app:Lcom/linever/cruise/android/CruiseApp;

    iget-object v1, v1, Lcom/linever/cruise/android/CruiseApp;->lineverId:Ljava/lang/String;

    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->app:Lcom/linever/cruise/android/CruiseApp;

    iget v2, v2, Lcom/linever/cruise/android/CruiseApp;->themeId:I

    sget-object v3, Lcom/linever/cruise/android/CruiseConfig;->CRUISE_LINEVER_ID:Ljava/lang/String;

    sget v4, Lcom/linever/cruise/android/CruiseConfig;->CRUISE_BOOK_ID:I

    const/4 v7, 0x0

    move-wide v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/linever/lib/ApiGetChip;->setParam(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)Lcom/linever/lib/ApiGetChip;

    move-result-object v1

    .line 483
    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->app:Lcom/linever/cruise/android/CruiseApp;

    iget-object v2, v2, Lcom/linever/cruise/android/CruiseApp;->rqueue:Lcom/android/volley/RequestQueue;

    iget-object v3, p0, Lcom/linever/cruise/android/FullPictureActivity;->app:Lcom/linever/cruise/android/CruiseApp;

    iget-object v3, v3, Lcom/linever/cruise/android/CruiseApp;->token:Ljava/lang/String;

    const-string v4, "FULLACT_GET_NET_PATH"

    invoke-virtual {v1, v2, v3, v4}, Lcom/linever/lib/ApiGetChip;->exec(Lcom/android/volley/RequestQueue;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private getSaveFileName(ILjava/lang/String;J)Ljava/lang/String;
    .registers 10
    .param p1, "dlStatus"    # I
    .param p2, "netPath"    # Ljava/lang/String;
    .param p3, "chipId"    # J

    .prologue
    .line 377
    invoke-static {p2}, Lcom/o1soft/lib/base/MediaUtils326;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "ext":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    .line 385
    :goto_b
    return-object v3

    .line 380
    :cond_c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_38

    sget-object v2, Lcom/linever/cruise/android/CruiseConfig;->CRUISE_ORG_PREFIX:Ljava/lang/String;

    .line 382
    .local v2, "sizePreFix":Ljava/lang/String;
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v1, "saveFileName":Ljava/lang/StringBuilder;
    const-string v3, "CRUISE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 380
    .end local v1    # "saveFileName":Ljava/lang/StringBuilder;
    .end local v2    # "sizePreFix":Ljava/lang/String;
    :cond_38
    sget-object v2, Lcom/linever/cruise/android/CruiseConfig;->CRUISE_MEDIUM_PREFIX:Ljava/lang/String;

    goto :goto_11
.end method

.method private loadParam(Landroid/os/Bundle;)Z
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 204
    if-nez p1, :cond_7

    .line 214
    :cond_6
    :goto_6
    return v0

    .line 205
    :cond_7
    const-string v1, "CALLER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCaller:I

    .line 206
    const-string v1, "DL_STATUS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLStatus:I

    .line 207
    const-string v1, "CRUISE_ID"

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseDBId:J

    .line 208
    const-string v1, "CRUISE_CHIP_ID"

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    .line 209
    const-string v1, "MSG"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMsg:Ljava/lang/String;

    .line 210
    const-string v1, "MED_IMG_PATH"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumImgPath:Ljava/lang/String;

    .line 211
    const-string v1, "MED_NET_PATH"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    .line 212
    const-string v1, "FULL_IMG_PATH"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullImgPath:Ljava/lang/String;

    .line 213
    const-string v1, "FULL_NET_PATH"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    .line 214
    iget-wide v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method

.method private setUpDownload()V
    .registers 5

    .prologue
    .line 301
    iget v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLStatus:I

    packed-switch v0, :pswitch_data_32

    .line 311
    invoke-direct {p0}, Lcom/linever/cruise/android/FullPictureActivity;->setUpDownloadButton()V

    .line 313
    :goto_8
    return-void

    .line 303
    :pswitch_9
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-wide v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseDBId:J

    iget-wide v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/linever/cruise/android/FullPictureActivity;->getNetPath(JJ)V

    goto :goto_8

    .line 304
    :cond_19
    invoke-direct {p0}, Lcom/linever/cruise/android/FullPictureActivity;->setUpDownloadButton()V

    goto :goto_8

    .line 307
    :pswitch_1d
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-wide v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseDBId:J

    iget-wide v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/linever/cruise/android/FullPictureActivity;->getNetPath(JJ)V

    goto :goto_8

    .line 308
    :cond_2d
    invoke-direct {p0}, Lcom/linever/cruise/android/FullPictureActivity;->setUpDownloadButton()V

    goto :goto_8

    .line 301
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_9
    .end packed-switch
.end method

.method private setUpDownloadButton()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 319
    const-string v1, "FullPictureActivity setUpDounloadButton"

    iget v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/o1soft/lib/base/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    iput-object v7, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 322
    iget v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLStatus:I

    packed-switch v1, :pswitch_data_f4

    .line 351
    iget v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCaller:I

    if-ne v1, v5, :cond_d3

    .line 352
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    invoke-direct {p0, v6, v1, v2, v3}, Lcom/linever/cruise/android/FullPictureActivity;->getSaveFileName(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 360
    :goto_32
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 361
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v0, "f":Ljava/io/File;
    const-string v1, "FullPictureActivity File Path"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/o1soft/lib/base/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 365
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    const v2, 0x7f020013

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 366
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 373
    .end local v0    # "f":Ljava/io/File;
    :cond_73
    :goto_73
    return-void

    .line 324
    :pswitch_74
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 325
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_32

    .line 328
    :cond_82
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    invoke-direct {p0, v6, v1, v2, v3}, Lcom/linever/cruise/android/FullPictureActivity;->getSaveFileName(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_32

    .line 333
    :pswitch_94
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 334
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_32

    .line 337
    :cond_a2
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    invoke-direct {p0, v5, v1, v2, v3}, Lcom/linever/cruise/android/FullPictureActivity;->getSaveFileName(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_32

    .line 342
    :pswitch_b5
    iget v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCaller:I

    if-ne v1, v5, :cond_cc

    .line 343
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    invoke-direct {p0, v6, v1, v2, v3}, Lcom/linever/cruise/android/FullPictureActivity;->getSaveFileName(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mSavePath:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    iget-object v2, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_32

    .line 347
    :cond_cc
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_32

    .line 356
    :cond_d3
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_32

    .line 369
    .restart local v0    # "f":Ljava/io/File;
    :cond_da
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    const v2, 0x7f020051

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 370
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_73

    .line 322
    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_94
        :pswitch_74
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x2bc

    const-wide/16 v8, 0x12c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->setContentView(I)V

    .line 106
    if-nez p1, :cond_23

    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_19
    invoke-direct {p0, v0}, Lcom/linever/cruise/android/FullPictureActivity;->loadParam(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 108
    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->finish()V

    .line 201
    :goto_22
    return-void

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_23
    move-object v0, p1

    .line 106
    goto :goto_19

    .line 112
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_25
    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/linever/cruise/android/CruiseApp;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->app:Lcom/linever/cruise/android/CruiseApp;

    .line 115
    const v4, 0x7f060029

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoFrame:Landroid/widget/FrameLayout;

    .line 116
    const v4, 0x7f06002a

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mImgFullView:Landroid/widget/ImageView;

    .line 117
    const v4, 0x7f06002c

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtMsg:Landroid/widget/TextView;

    .line 118
    const v4, 0x7f06002b

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoTopBar:Landroid/widget/LinearLayout;

    .line 119
    const v4, 0x7f06002e

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoBottomBar:Landroid/widget/LinearLayout;

    .line 120
    const v4, 0x7f06002d

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mIBtnClose:Landroid/widget/ImageButton;

    .line 121
    const v4, 0x7f060032

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCkbZoom:Landroid/widget/CheckBox;

    .line 122
    const v4, 0x7f060030

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    .line 123
    const v4, 0x7f060031

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtDownloadStatus:Landroid/widget/TextView;

    .line 124
    const v4, 0x7f06002f

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    .line 126
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mPgbDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 128
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtDownloadStatus:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mTxtMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iput-boolean v7, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBarFlag:Z

    .line 131
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 132
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mLoBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 134
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mImgFullView:Landroid/widget/ImageView;

    new-instance v5, Lcom/linever/cruise/android/FullPictureActivity$2;

    invoke-direct {v5, p0}, Lcom/linever/cruise/android/FullPictureActivity$2;-><init>(Lcom/linever/cruise/android/FullPictureActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mIBtnClose:Landroid/widget/ImageButton;

    new-instance v5, Lcom/linever/cruise/android/FullPictureActivity$3;

    invoke-direct {v5, p0}, Lcom/linever/cruise/android/FullPictureActivity$3;-><init>(Lcom/linever/cruise/android/FullPictureActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCkbZoom:Landroid/widget/CheckBox;

    new-instance v5, Lcom/linever/cruise/android/FullPictureActivity$4;

    invoke-direct {v5, p0}, Lcom/linever/cruise/android/FullPictureActivity$4;-><init>(Lcom/linever/cruise/android/FullPictureActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mBtnDownload:Landroid/widget/Button;

    new-instance v5, Lcom/linever/cruise/android/FullPictureActivity$5;

    invoke-direct {v5, p0}, Lcom/linever/cruise/android/FullPictureActivity$5;-><init>(Lcom/linever/cruise/android/FullPictureActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 179
    .local v1, "dispSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 180
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 181
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullImgPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15c

    const-string v4, "path"

    iget-object v5, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullImgPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_11c
    :goto_11c
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16c

    const-string v4, "netpath"

    iget-object v5, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_12b
    :goto_12b
    const-string v4, "wpx"

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string v4, "hpx"

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    invoke-virtual {p0}, Lcom/linever/cruise/android/FullPictureActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 193
    .local v3, "lm":Landroid/app/LoaderManager;
    invoke-virtual {v3, v6, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 194
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/linever/cruise/android/FullPictureActivity;->DBUpdaterCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v7, v4, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 197
    invoke-direct {p0}, Lcom/linever/cruise/android/FullPictureActivity;->setUpDownload()V

    .line 198
    const-string v4, "download"

    invoke-virtual {p0, v4}, Lcom/linever/cruise/android/FullPictureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLManager:Landroid/app/DownloadManager;

    .line 200
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mHandler:Landroid/os/Handler;

    goto/16 :goto_22

    .line 184
    .end local v3    # "lm":Landroid/app/LoaderManager;
    :cond_15c
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumImgPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11c

    const-string v4, "path"

    iget-object v5, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumImgPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11c

    .line 187
    :cond_16c
    iget-object v4, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12b

    const-string v4, "netpath"

    iget-object v5, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lcom/linever/cruise/android/FitImageLoader;

    invoke-direct {v0, p0, p2}, Lcom/linever/cruise/android/FitImageLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 283
    .local v0, "loader":Lcom/linever/cruise/android/FitImageLoader;
    invoke-virtual {v0}, Lcom/linever/cruise/android/FitImageLoader;->forceLoad()V

    .line 284
    return-object v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p2, "data"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mImgFullView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/linever/cruise/android/FullPictureActivity;->onLoadFinished(Landroid/content/Loader;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    const-string v0, "CALLER"

    iget v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCaller:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v0, "DL_STATUS"

    iget v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mDLStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v0, "CRUISE_ID"

    iget-wide v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseDBId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 223
    const-string v0, "CRUISE_CHIP_ID"

    iget-wide v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mCruiseChipId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    const-string v0, "MSG"

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "MED_IMG_PATH"

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumImgPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "MED_NET_PATH"

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mMediumNetPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "FULL_IMG_PATH"

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullImgPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "FULL_NET_PATH"

    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mFullNetPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 235
    new-instance v1, Lcom/linever/cruise/android/FullPictureActivity$6;

    invoke-direct {v1, p0}, Lcom/linever/cruise/android/FullPictureActivity$6;-><init>(Lcom/linever/cruise/android/FullPictureActivity;)V

    iput-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/linever/cruise/android/FullPictureActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/linever/cruise/android/FullPictureActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 254
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->app:Lcom/linever/cruise/android/CruiseApp;

    iget-object v0, v0, Lcom/linever/cruise/android/CruiseApp;->rqueue:Lcom/android/volley/RequestQueue;

    const-string v1, "FULLACT_GET_NET_PATH"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/linever/cruise/android/FullPictureActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/linever/cruise/android/FullPictureActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    return-void
.end method
